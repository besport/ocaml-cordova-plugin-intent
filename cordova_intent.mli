(*TODO*)
type item = private Ojs.t

val create_item : uri:string ->
                  type:string ->
                  extension:string ->
                  item
[@@js.builder]

type intent = private Ojs.t

val create_intent :   action:string ->
                      clipItems:Item vect ->
                      flags:string ->
                      type:string ->
                      component:string ->
                      extras:int ->
                      intent
[@@js.builder]

val addEventListener :
  string                                            ->
  (unit -> unit)                                    ->
  unit
[@@js.global "document.addEventListener"]

val setNewIntentHandler :
  (Intent -> unit)                                    ->
  unit
[@@js.global "window.plugins.intent.setNewIntentHandler"]



