(** Inference with delayed sampling *)
open Ztypes
open Ds_distribution

module DS_hl = Infer_ds_hl.Make(Infer_ds_ll_gc)

include DS_hl

