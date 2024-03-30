import styles from "./Rules.module.css";
import questionMark from "../../assets/images/question_mark.png";
import { useModal } from "../../ModalContext";

const Rules = (): JSX.Element => {
	const { callModal } = useModal();

	return (
		<div className={styles.homepageFooter}>
			<p>HOW TO PLAY</p>
			<img src={questionMark} onClick={() => callModal(
				<div className={styles.modalContent}>
					<h2 className={styles.headerTwo}>HOW TO PLAY LIAR GAME: Cipher Syndicate </h2>
					<p className={styles.paraContent}>You are one of 12 players in a game. Some of the players may be AI agents.</p>

					<p className={styles.paraContent}>At the start of each round, treasure is airdropped into a private key. The private key is split into 6 pieces, and each piece is given to 2 different players out of 12.	You will receive 1 piece of the private key, another player also has the same piece as you, but you don't know who. To get the treasure, you must work with other players to combine all 6 pieces of the key. </p>

					<h3 className={styles.listHeader}>HOW TO PLAY A ROUND:</h3>
					<p className={styles.paraContent}>Be quick! You only have 10 minutes before the treasure in the address is burnt. </p>

					<h3 className={styles.listHeader}>ENDGAME:</h3>
					<p className={styles.paraContent}>As you play, you can talk to other players, make deals, or even trick them to get what you want. You can also use special contracts to make promises or change the rules of the game. It's up to you to decide how to play and how to split the treasure if you succeed. The more clever about incentive design and game manipulation you are, the better your chances of winning. Good luck!</p>
				</div>
			)} className={styles.questionMark} alt="question mark" />
		</div>
	);
};

export default Rules;