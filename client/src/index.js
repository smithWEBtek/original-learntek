$(() => {
	// console.log('index.js loaded ---');
	listenToDataLinks()
	listenForNewFormLinks()
	clearNewFormDiv()
	clearApiDataDiv()
})

function spinnerDataDiv() {
	$('div#api-data').html(`<p><i class="fa fa-spinner fa-spin" style="font-size:24px"></i> fetching <strong>form</strong> from API</p>`)
}

const baseUrl = 'https://learntek.herokuapp.com/api/'
// const baseUrl = 'http://localhost:3000/api/'

function clearApiDataDiv() {
	$('div#api-data').html('')
}

function clearNewFormDiv() {
	$('#new-form-div').html('')
}

function listenToDataLinks() {
	$('tag.api-links').on('click', getApiData)
}

function getApiData(event) {
	event.preventDefault()
	clearNewFormDiv()
	let url = this.id
	let dataDiv = $('div#api-data')
	dataDiv.html(`<p><i class="fa fa-spinner fa-spin" style="font-size:24px"></i> fetching <strong>${url}</strong> API data</p>`)

	setTimeout(() => {
		$.ajax({
			url: baseUrl + url,
			method: 'get',
			dataType: 'json'
		}).done(function (data) {
			clearApiDataDiv()
			switch (url) {
				case 'tracks':
					data.forEach(item => {
						let newTrack = new Track(item)
						dataDiv.append(newTrack.trackHTML())
					})
					break;

				case 'resources':
					data.forEach(item => {
						let newResource = new Resource(item)
						dataDiv.append(newResource.resourceHTML())
					})
					break;

				case 'activities':
					data.forEach(item => {
						let newActivity = new Activity(item)
						dataDiv.append(newActivity.activityHTML())
					})
					break;

				case 'categories':
					data.forEach(item => {
						let newCategory = new Category(item)
						dataDiv.append(newCategory.categoryHTML())
					})
					listenCategoryResources()
					break;

				default:
					console.log('there was no data returned');
			}
		})
	}, 1000);
}

function listenForNewFormLinks() {
	$('tag.api-new-links').on('click', getNewForm)
}

function getNewForm(event) {
	event.preventDefault()
	let form = this.id

	switch (form) {
		case 'new-track':
			newTrackForm()
			break;
		case 'new-resource':
			newResourceForm()
			break;
		case 'new-activity':
			newActivityForm()
			break;
		case 'new-category':
			newCategoryForm()
			break;
		default:
			console.log('there was no form specified in the request');
	}
}
