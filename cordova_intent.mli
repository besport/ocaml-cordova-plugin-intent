(*TODO*)
type Item = private Ojs.t

val create_Item : uri:string ->
                  type:string ->
                  extension:string ->
                  Item
[@@js.builder]

type Intent = private Ojs.t

val create_Intent :   action:string ->
                      clipItems:string -> Item vect
                      flags:string ->
                      type:string ->
                      component:string ->
                      extras:int ->
                      Intent
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



