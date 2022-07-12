package listener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.ContextStartedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

import model.Client;
import repository.ClientRepository;

@Component
public class ContextStartedEventListener {

	@Autowired
	private ClientRepository clientRepository;

	@EventListener
	public void onApplicationEvent(ContextStartedEvent arg0) {
		System.out.println("bonojur");
		this.clientRepository.save(new Client("a", "nom", "prenom"));
	}

}
