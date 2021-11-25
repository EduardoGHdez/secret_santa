import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  call() {
    // TODO: This should not be necessary, but for now, this is fine.
    //       Tried to do this by creating a simple form in the person_partial view,
    //       but when a new record was created, it didn't seem to work as expected by breaking
    //       the UI and not appending the new persons created.
    //
    //       Saving the error here for future work:
    //       ```
    //       Error performing Turbo::Streams::ActionBroadcastJob from Async(default) in 15.45ms:
    //        ActionView::Template::Error (Request forgery prot ection requires a working session
    //        store but your application has sessions disabled. You need to either disable request
    //        forgery protection, or configure a working session store
    //       ```
    const personId = this.element.dataset.person
    const csrfToken = document.querySelector("[name='csrf-token']").content

    fetch(`/people/${personId}/claim`, {
      method: 'PUT',
      headers: {
        "X-CSRF-Token": csrfToken,
        "Content-Type": "application/json"
      },
    }).then(response => response.json())
      .then(data => {
        console.log('Success:', data);
      })
      .catch((error) => {
        console.error('Error:', error);
      });
  }
}
