
;; stackskards-core-v1
;; Stacks Kards is an NFT card game on the Stacks Blockchain

;; token
;;

(define-non-fungible-token stackskards (string-ascii 1))

;; constants
;;

(define-constant CONTRACT_PRINCIPAL 'SP17EV8YSY8MJ9J0ZDHVHXG5YKKX53Q2KKJD2YYX4)

;; data maps and vars
;;

(define-map cards { card: (string-ascii 1) } { points: int, uri: (string-ascii 255), max-minted: int })

;; private functions
;;

;; public functions
;;

(define-public (initialize)
    (asserts! (is-eq tx-sender CONTRACT_SENDER) (err u1))
    (map-set cards { card: "1" } {points: 2, uri: "http://www.stackskards.com/", max-minted: 1000 })
    (map-set cards { card: "2" } {points: 2, uri: "http://www.stackskards.com/", max-minted: 1000 })
    (map-set cards { card: "3" } {points: 2, uri: "http://www.stackskards.com/", max-minted: 1000 })
    (map-set cards { card: "4" } {points: 2, uri: "http://www.stackskards.com/", max-minted: 1000 })
)