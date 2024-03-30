export type Player = {
	id: number
	isHost: boolean
	name: string
	team?: string
	gameId: number
	status: string
	traits: string[]
	avatar: string
	isReady: boolean
	isAgent: boolean
	wallet: string
	isDisconnected: boolean
}

export type Round = {
	id: number
	gameId: number
	roundNumber: number
	currentPhase: string
	died: Player[]
}

export type Game = {
	id: number
	players: Player[]
	gameCode: string
	name: string
	size: number
	rounds: Round[]
}

export type Role = {
	id: number
	name: string
	type: string
	nightTimePrompt: string
	roleDesc: string
}

export type Vote = {
	id: number
	gameId: number
	roundNumber: number
	voterId: number
	candidateId: number
	phase: string
}

export interface GameData {
	game: Game
	players: Player[]
	thisPlayer: Player,
	currentRound: Round
	ghostImages: number[]
}

export interface ChatData {
	message: string
	senderId:number
	senderName: string
}

