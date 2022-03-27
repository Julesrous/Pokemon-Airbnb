import { Controller } from "stimulus";
import consumer from "../channels/consumer";

export default class extends Controller {
  static values = { chatroomId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = consumer.subscriptions.create(
      { channel: "ChatroomsChannel", id: this.chatroomIdValue },
      { received: data => this.#insertMessageAndScrollDown(data) }
      )
    }
    
    disconnect () {
      this.channel.unsubscribe()
    }
    
    resetForm(event) {
    event.target.reset()
    console.log("hey")
  }

  #insertMessageAndScrollDown(data) {
    console.log("coucou")
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
}