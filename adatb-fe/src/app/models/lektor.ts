import { Nyelvtudas } from "./nyelvtudas";

export interface lektor {
    id: string,
    nev: string,
    email: string,
    jelszo: string,
    szakterulet: string,
    intezet: string,
    tudfokozat: string,
    nyelvek: Nyelvtudas[]
}