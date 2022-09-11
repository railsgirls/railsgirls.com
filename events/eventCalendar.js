const calendarData = []

fetch('./events/events.json')
  .then(function (response) {
    return response.json();
  })
  .then(function (data) {
    data["events"].map(item => calendarData.push(item))
    return calendarItems(calendarData)
  })
  .then(data => document.getElementById("event-calendar").innerHTML = data);

const calendarItems = (events) => {
  return events.reverse().map(e => {
    if (new Date(e.endDate) < Date.now()) return;
    return "<a href='" + e.eventUrl + "'class='upcoming'>" +
      "<img src='" + e.imageUrl + "' width='50'>" +
      "<h3>" +
      e.location + "<br />" +
      "<span>" + e.writtenDate + "</span>" +
      "</h3>" + "</a>"
  }).join("")
}
