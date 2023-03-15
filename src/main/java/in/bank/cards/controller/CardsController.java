package in.bank.cards.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import in.bank.cards.model.Cards;
//import in.bank.cards.model.Customer;
import in.bank.cards.repository.CardsRepository;


@RestController
public class CardsController {
	
	@Autowired
	private CardsRepository cardsRepository;
	
	
	@PostMapping("/card")
	public List<Cards> getCardsDetails (@RequestBody Cards card) {
		List<Cards> cards = cardsRepository.findByCustomerId(card.getCustomerId());
				return cards;
		
	}
}
