

/*
CREATE TABLE `Ailments` (
   id INTEGER PRIMARY KEY AUTOINCREMENT ,
  `name` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `symptoms` text NOT NULL,
  Sources VARCHAR(255),
  category_id int,
  FOREIGN KEY (category_id) REFERENCES categories(category_id)
);



CREATE TABLE `categories` (
 category_id INTEGER PRIMARY KEY AUTOINCREMENT,
  `cateogrytitle` varchar(255) NOT NULL
) ;



INSERT into categories (cateogrytitle)
VALUES("hips"),("legs"),("lowerback"),("hands"),("fingers"),("wrists"),("shoulders"),("elbow"),("neck"),("head"),("eyes");
*/


/*
INSERT INTO Ailments (name, title, body, symptoms, Sources, category_id) VALUES
('Sciatica', 'Sciatica', 'Pain in the sciatic nerve from back down the leg caused by compressed or irritated nerves, often due to herniated discs or spinal stenosis.', 'pain, numbness, tingling, weakness', 'https://www.ncbi.nlm.nih.gov/books/NBK507908/', 2),
('Lower_Crossed_Syndrome', 'Lower Crossed Syndrome', 'Characterized by overactivation of abdominal muscles and underactivation of gluteus maximus, leading to hip flexion and backward pelvic tilt. It has two subtypes: A (anterior pelvic crossed syndrome) and B (posterior pelvic crossed syndrome).', 'muscle weakness, muscle tightness, pain, joint dysfunction', 'https://www.physio-pedia.com/Lower_Crossed_Syndrome', 1),
('Deep_Vein_Thrombosis', 'Deep Vein Thrombosis', 'A blood clot that commonly occurs in the legs, potentially fatal. Often caused by a sedentary lifestyle, injury, or high blood pressure.', 'inconsistent sensitivity, calf pain, swelling, redness, dilated veins, warmness, tenderness, pain, limb edema', 'https://www.ncbi.nlm.nih.gov/books/NBK507708/', 2),
('Lumbar_Spinal_Stenosis', 'Lumbar Spinal Stenosis', 'Narrowing of the spinal canal causing nerve compression, leading to pain and discomfort.', 'pain, numbness, tingling, weakness, heavy feeling in legs, cramping', 'https://my.clevelandclinic.org/health/diseases/17499-spinal-stenosis', 3),
('Cervical_Spinal_Stenosis', 'Cervical Spinal Stenosis', 'Narrowing of the cervical spinal canal causing nerve compression, leading to pain and discomfort.', 'pain, numbness, tingling, weakness, neck pain, balance problems', 'https://my.clevelandclinic.org/health/diseases/17499-spinal-stenosis', 9),
('Hyperlordosis', 'Hyperlordosis', 'Excessive curvature of the spine leading to discomfort and poor posture, also known as hollowback or swayback.', 'pain in the back, curved spine', 'https://www.webmd.com/back-pain/best-exercises-hyperlordosis', 3),
('Eye_Strain', 'Eye Strain (Computer Vision Syndrome)', 'Strain on eye muscles caused by prolonged screen time without breaks.', 'blurred vision, dry eyes, headaches, difficulty focusing, eye discomfort', 'N/A', 11),
('Tension_Headaches', 'Tension Headaches', 'Muscle tension in the neck and shoulders from poor posture, eye strain, or stress.', 'dull, aching pain around forehead or back of head, possible neck pain', 'N/A', 10),
('Cervical_Strain', 'Cervical Strain (Neck Pain)', 'Strain on the cervical spine from improper posture.', 'pain and stiffness in the neck, radiating pain to upper back and shoulders', 'N/A', 9),
('TMJ_Disorder', 'Temporomandibular Joint Disorder (TMJ)', 'Jaw clenching or grinding, often linked to stress or intense focus.', 'jaw pain, clicking sounds when moving jaw, difficulty chewing', 'N/A', 7),
('Upper_Crossed_Syndrome', 'Upper Crossed Syndrome', 'Tightening of chest and neck muscles with weakening of upper back muscles due to prolonged slouching.', 'rounded shoulders, forward head position, neck and shoulder pain, tightness in chest', 'N/A', 9),
('Shoulder_Impingement_Syndrome', 'Shoulder Impingement Syndrome', 'Irritation of shoulder tendons from overuse, particularly when raising arms frequently.', 'pain when lifting arm, weakness in shoulder, catching sensation', 'N/A', 7),
('Tension_Myalgia', 'Tension Myalgia (Muscle Strain)', 'Chronic stress or poor posture leading to muscle overuse.', 'aching muscles in neck, upper back, and shoulders, tender trigger points', 'N/A', 9),
('Tech_Neck', 'Tech Neck', 'Unnatural forward head position from looking down at screens, putting pressure on the cervical spine.', 'neck pain, stiffness, headaches', 'N/A', 9),
('Shoulder_Overuse_Tendinopathy', 'Shoulder Overuse Tendinopathy', 'Pain in the outer part of the upper arm, worsens when raising hands or reaching.', 'arm pain, shoulder pain', 'N/A', 7),
('Elbow_Overuse_Tendinopathy', 'Elbow Overuse Tendinopathy', 'Develops from repetitive use of forearm extensors, more common in individuals aged 30-60 and gamers.', 'forearm pain, elbow pain', 'N/A', 8),
('Cubital_Tunnel_Syndrome', 'Cubital Tunnel Syndrome', 'Neuropathy of the ulnar nerve due to inflammation from repetitive movements.', 'numbness, shooting pain along forearm', 'N/A', 8),
('Carpal_Tunnel_Syndrome', 'Carpal Tunnel Syndrome', 'Inflammation in the wrist caused by poor workstation ergonomics.', 'sharp pain in wrist, lower mobility around wrist', 'N/A', 6),
('Gamer_Thumb', 'Gamer Thumb', 'Inflammation and irritation of tendons around the thumb due to repetitive stress.', 'pain at base of thumb, difficulty grasping or pinching, pain when flexing wrist', 'N/A', 5);
*/
/*

/*UPDATE categories set categoryEmoji = '💆‍♂️' WHERE category_id = 9;*/


/*ALTER TABLE Ailments ADD COLUMN article TEXT;

UPDATE Ailments set article = "Eye Strain (Computer Vision Syndrome)
It looks like your eyes might be feeling the strain from all that screen time. Computer Vision Syndrome, or Digital Eye Strain, is common these days, affecting anyone who spends hours in front of screens for work, gaming, or browsing. Symptoms include blurry vision, dry eyes, headaches, and trouble focusing.
When you’re glued to a screen, your blink rate drops, making your eyes dry and irritated. Digital screens are also harder to focus on than printed text, with factors like glare, poor lighting, and incorrect screen distance making things worse.
Don’t worry, though. There are simple steps you can take to feel better. 
Follow the 20-20-20 rule where every 20 minutes you look at something 20 feet away for 20 seconds to give your eyes a break. Keep your monitor 20 to 24 inches away with the top at or just below eye level and adjust the brightness to your environment. Reduce glare by using curtains, adjusting lighting, or adding a matte screen filter. Adjust text settings by increasing the font size and tweaking the contrast. Consider blue light filters or glasses, especially in the evening to prevent sleep disruption. Remember to blink more often and use artificial tears if your eyes feel dry. Finally, visit your eye doctor regularly to keep your vision healthy and get personalized advice."
WHERE id = 11;*/

/*UPDATE Ailments set article = "Tension Headaches
Ah, it sounds like you might be dealing with tension headaches. They’re pretty common, especially if you’re spending a lot of time at your desk or in front of screens. The pain often feels dull and achy, starting around your forehead or the back of your head, and can spread down into your neck and shoulders.
Poor posture, eye strain, or stress can make the muscles around your neck and scalp tense up, causing that familiar, uncomfortable ache. Sitting hunched over your screen or feeling stressed only makes things worse.
Don’t worry! There are several simple steps you can take to feel better.
Check Your Posture. Sit upright, with your back supported and your screen at eye level.
Take Breaks. Stand up and stretch every 30-60 minutes. Even a short walk helps!
Relax Those Muscles. Gentle neck stretches and shoulder rolls can work wonders.
Manage Stress. Deep breathing or listening to calming music can make a difference.
Stay Hydrated. Drinking enough water can help prevent headaches, too.
If these headaches become frequent or intense, it might be time to talk to a healthcare provider."
WHERE id = 12;*/

/*UPDATE Ailments set article = "Cervical Strain (Neck Pain)
Oh no, neck pain can really be a bother. Cervical strain, often caused by poor posture like hunching over your screen or looking down at your phone, puts a lot of extra strain on your neck muscles. Think of your head as a heavy bowling ball; when it’s not properly aligned, your neck works overtime, leading to stiffness and pain that can radiate to your shoulders or upper back. Sometimes, it can even trigger tension headaches.
There are steps you can take to reduce the pain. Fix your posture by keeping your screen at eye level and your shoulders relaxed. Make sure your back is supported and your feet are flat on the floor. Try neck stretches, like tilting your head side to side, bringing your chin to your chest, or doing gentle shoulder rolls to loosen tight muscles. Strengthen your neck with chin tucks to engage and support those muscles. Remember to take breaks and move around regularly; even a short walk can make a big difference.
Applying heat or ice can also help. Use a heating pad to relax muscles or ice to reduce inflammation. And don’t forget to keep your phone at eye level to prevent extra neck strain. If your neck pain persists or gets worse, consult a healthcare professional. Sometimes, a little extra help or physical therapy can make all the difference."
WHERE id = 13; */

/*UPDATE Ailments set article = "Temporomandibular Joint Disorder (TMJ)
It sounds like you’re feeling some discomfort in your jaw, which might be due to a TMJ disorder. TMJ stands for the temporomandibular joint, connecting your jawbone to your skull. When this joint isn’t working smoothly, you may notice pain, clicking sounds, or difficulty chewing and talking.
TMJ issues are often triggered by stress, teeth grinding, or jaw clenching, especially during intense focus like gaming marathons or stressful work sessions. The muscles around your jaw can become tense, causing anything from a dull ache to sharp discomfort. Sometimes, your jaw might feel tight or get stuck.
Don’t worry, there are ways to relieve TMJ discomfort. Relaxation techniques such as deep breathing, meditation, or gentle yoga can ease muscle tension. Jaw stretches and massages, like gently opening and closing your mouth or massaging the jaw muscles, can help reduce stiffness. If you grind your teeth at night, a custom mouth guard from your dentist can protect your jaw. Warm compresses can relax muscles, while cold packs reduce swelling and numb pain.
To prevent further issues, keep your jaw relaxed by having your teeth slightly apart and lips together. Avoid chewing gum or hard foods, and be mindful of your posture, since slouching can add stress to your jaw and neck. If the pain doesn’t improve or disrupts your daily life, consider seeing a healthcare professional. TMJ disorders are manageable, so hang in there. You’ve got this!"
Where id = 14; */

/*UPDATE Ailments set article = "Upper Crossed Syndrome
Hmm, it sounds like you might be dealing with something called Upper Crossed Syndrome. If you’ve noticed that your shoulders are rounded or your head leans forward, this could be the culprit. It’s super common, especially if you’re spending hours sitting or working at a screen.

Upper Crossed Syndrome happens when your upper body muscles are out of balance: your chest and neck muscles become tight and overactive, while your upper back and shoulder muscles get weak and underused. Picture it like a tug-of-war between muscles that throws your posture out of whack, leading to that classic 'hunched' look. Over time, this can cause discomfort, headaches, or neck strain. Let me take you through some signs to look for. 
Rounded Shoulders. Your shoulders slouch, curving your upper back.
Forward Head Posture. Your head juts forward, straining your neck.
Chest Tightness. A feeling of restriction in your chest muscles.
Upper Back Weakness. Fatigue or soreness in your upper back, especially after sitting.
There are methods you can do to improve it.
Proper Sitting Posture. Sit with your back straight, shoulders back, and head aligned with your spine. Keep your feet flat and your screen at eye level.
Strengthen Your Back: Do exercises like rows and scapular squeezes to activate your upper back muscles.
Stretch Your Chest: Stand in a doorway, extend your arms, and lean forward gently to open up your chest.
If your symptoms persist, seeing a physical therapist or chiropractor can help. Remember, small adjustments can make a big difference in your posture and overall comfort!"
WHERE id = 15;*/

/*UPDATE Ailments set article = "Shoulder Impingement Syndrome
Shoulder feeling sore or weak? It might be shoulder impingement syndrome, which often comes from overusing your shoulder muscles. Like when you’re gaming, working long hours on your computer, or frequently lifting your arms. You might notice pain when raising your arm or even a sense of weakness in your shoulder.

This happens because the tendons in your shoulder can get irritated or compressed from repetitive movements, causing inflammation and discomfort. Your posture can make it worse, especially if your shoulders are hunched forward.
There are some simple steps you can take to feel better.
Strengthen Your Rotator Cuff. Exercises focused on your rotator cuff can help stabilize and support your shoulder joint.
Improve Your Posture. Keep your shoulders back and down and adjust your workspace so your arms aren’t strained.
Take Breaks. Give your shoulders a rest by taking regular breaks to stretch and relax your muscles.
If the pain doesn’t go away or gets worse, consider seeing a healthcare professional. They can help you develop a personalized plan to get your shoulder feeling strong again!"
WHERE id = 16; */

/*UPDATE Ailments set article = "Tension Myalgia (Muscle Strain)
Feeling achy or noticing tender spots in your neck and upper back? That could be muscle strain, also called tension myalgia. It’s often caused by chronic stress or poor posture, which leads to muscle overuse and discomfort.

When you’re stressed or sitting with bad posture, your muscles stay tense for too long, causing pain and fatigue. It’s your body’s way of saying it needs a break!
Let me tell you how to ease the ache.
Relaxation Exercises. Try deep breathing or gentle stretches to release muscle tension.
Massage Therapy. A good massage can work wonders to soothe sore muscles.
Ergonomic Workspace. Adjust your chair, desk, and monitor to promote better posture and reduce strain.
Making small changes can bring big relief. If your muscle strain persists, a visit to a healthcare professional might help you find more targeted solutions!"
Where ID = 17;*/

/*UPDATE Ailments set article = "Tech Neck
Uh-oh, you might be dealing with Tech Neck. It’s common if you’re always looking down at your phone or laptop. This forward head posture puts extra pressure on your cervical spine, leading to neck pain, stiffness, and even headaches.

This happens because your neck wasn’t built to support your head at an angle for hours on end. Constantly bending forward strains your neck muscles and spine, causing discomfort.
There are some ways you can fix it.
Raise Your Screens. Keep your phone or laptop at eye level to minimize neck strain.
Use Ergonomic Furniture. Set up your workspace so you can maintain good posture.
Do Neck Stretches. Gentle stretches can help relieve tension and keep your neck flexible.
Making these small adjustments can make a big difference in how your neck feels. Take care of your posture and your neck will thank you!"
Where ID = 18;*/

/*UPDATE Ailments set article = "Shoulder Overuse Tendinopathy
Dealing with shoulder pain that gets worse when you lift your arm or reach behind you? It could be rotator cuff tendinopathy. This condition often causes pain in the outer part of your upper arm and sometimes at the front or top of your shoulder. The discomfort can even wake you up at night!
Don’t worry, there are some steps you can take that might help.
Rest Your Shoulder. Give it a break from activities that cause pain.
Anti-Inflammatory Meds. Over-the-counter options like ibuprofen can reduce pain and swelling.
Ice Therapy. Apply ice for 15-20 minutes at a time to ease inflammation.
Stretch and Strengthen. Gentle shoulder stretches can improve flexibility and help with long-term recovery.
If the pain persists, consider seeing a healthcare provider for a more tailored treatment plan. Take care of your shoulder, and it’ll thank you!"
Where ID = 19;*/

/*UPDATE Ailments set article = "Elbow Overuse Tendinopathy
Experiencing elbow pain from repetitive activities like gaming or sports? You might be dealing with elbow overuse tendinopathy. It develops from straining your forearm muscles over and over, and while it’s more common in people aged 30-60, gamers are at risk too due to repeated movements.
You’re probably wondering what you can do to prevent this, and I’m here to help!
Take Breaks. Rest your forearms regularly to avoid overuse.
Do Stretches. Stretching your forearm muscles can help keep them flexible.
Use Ergonomics. Make sure your setup supports good posture and minimizes strain.
Remember, small adjustments can make a big difference in keeping your elbows pain-free. If the pain persists, consult a healthcare professional for further advice."
WHERE ID = 20;*/

/*UPDATE Ailments set article = "Cubital Tunnel Syndrome
Feeling numbness or shooting pain in your inner forearm or into your ring and pinky fingers? It might be cubital tunnel syndrome, caused by inflammation of the ulnar nerve at the elbow. Quick, repetitive movements or leaning on your elbows for too long can trigger these symptoms.
You’re probably wondering what you can do to prevent this, and I’m here to help!
Adjust Your Posture. Keep your elbows relaxed and avoid positions that put pressure on the nerve.
Don’t Lean on Your Elbows. Try not to rest your weight on them for extended periods.
Use Ergonomic Techniques. Set up your workspace to minimize nerve strain.
If symptoms persist or worsen, consider consulting a healthcare professional. A few posture tweaks can go a long way in keeping your nerves happy!"
WHERE ID = 21;*/

/*UPDATE Ailments set article = "Carpal Tunnel Syndrome
Oh no, dealing with wrist pain? That could be carpal tunnel syndrome, or CTS for short. It usually happens when your wrist is under stress from poor workstation setup… like if your monitor, keyboard, or mouse aren't positioned right. Symptoms might include sharp pain, reduced mobility, or inflammation. 
You’re probably wondering what you can do to fix this, and I’m here to help!
Adjust Your Setup. Make sure your keyboard and mouse are at a comfy height, and your wrists are straight. Your arms should make a 90-degree angle, with your hands level with your forearms.
Take Regular Breaks. Give those hardworking wrists a rest! Stretch them out or give them a gentle shake to relieve tension.
Use Ergonomic Tools. An ergonomic keyboard or mouse can work wonders to ease the strain.
Still feeling pain or discomfort? Don't ignore it! If it’s getting worse, it’s time to chat with a doctor. A few small changes can really make a big difference, and I’m here to cheer you on to a pain-free wrist setup!"
WHERE ID = 22;*/

/*UPDATE Ailments set article = "Gamer's Thumb
Uh-oh, sounds like you might be dealing with Gamer's Thumb! Also known as De Quervain's Tenosynovitis (or Nintendo Thumb if you prefer), it’s caused by repetitive stress on the tendons in your thumb. All that button-mashing or joystick action can lead to pain and swelling at the base of your thumb, making it hard to grasp or pinch things. You might also feel pain when moving your wrist. Not fun, right?
Let met ake you through some steps on how to prevent it.
Do Wrist & Thumb Exercises. Regularly stretch and strengthen your thumb and wrist to keep those tendons happy and healthy.
Take Breaks. Give your hands a break during long gaming sessions to avoid overworking your tendons.
Warm Up Before Playing. Yes, even your thumbs can benefit from a little warm-up to prevent strain!
If the pain doesn’t go away or gets worse, it might be time to see a healthcare professional. But don’t worry! Simple exercises and some mindful gaming habits can go a long way. Keep those thumbs in top gaming shape!"
WHERE ID = 23;*/

/*UPDATE Ailments set article = "Sciatica
Oh no, dealing with pain or numbness running from your lower back down your leg? It could sound like sciatica, which is discomfort along the sciatic nerve. But remember, I’m here to give advice, not a diagnosis! Sciatica symptoms can include pain, tingling, or weakness in your leg, often triggered by nerve irritation or compression from issues like a herniated disc or spinal stenosis.
Here are some ways you can manage your discomfort, but I recommend to speak with a medical professional before doing any of these. 
Anti-Inflammatory Meds. These might help reduce pain and swelling, but ask your doctor if they’re right for you.
Pain Relief Options. Over-the-counter painkillers could provide some temporary relief.
Physical Therapy. Targeted exercises may help ease nerve pressure, but it’s best to work with a professional for guidance.
If your symptoms are persistent or getting worse, it’s important to consult a healthcare provider. I’m here to offer helpful tips, but only a medical professional can give you a proper evaluation."
WHERE ID = 5;*/

/*UPDATE Ailments set article = "Lower Crossed Syndrome
Hmm, it sounds like you might have Lower Crossed Syndrome! It happens when there’s a muscle imbalance. Your abdominal muscles are overactive, while your gluteal muscles are underactive. This can lead to hip flexion, a backward-tilted pelvis, and an exaggerated curve in your lower back (hyperlordosis).
Let me explain some of the subtypes for you.
Type A. A swayback posture with your hips sticking out and lower back arching.
Type B. More of a hunched upper back with knee hyperflexion.
I suggest you take some measures to improve your posture, and here are some ways to do that.
Stretching. Exercises like the Iliopsoas stretch and Erector spinae stretch can help restore balance.
Take Breaks. If you’re gaming or sitting for long periods, stand up and move around to give your body a break.
Remember, I’m here to offer general guidance, but for personalized advice, it’s best to consult a physical therapist or healthcare professional. They can design a plan tailored to your needs and help you feel more comfortable."
WHERE ID = 6;*/

/*UPDATE Ailments set article = "Deep Vein Thrombosis (DVT)
It sounds like you might have DVT, but keep in mind that I’m not a medical professional and can’t say for sure if that’s what you’re dealing with. DVT is a blood clot that usually forms in the leg and can be life-threatening if left untreated. Symptoms could include calf pain, swelling, redness, dilated veins, or warmth in the affected area.

Sitting for long periods, having high blood pressure, or recovering from an injury can increase your risk. If you spend a lot of time gaming or working at a desk, taking precautions is a good idea.
Move Often, stand up, stretch, or walk around regularly to keep your blood circulating. Avoid limb compression and be mindful not to rest your arms or legs on hard surfaces for too long. Take breaks from sitting: Short walks or even standing up for a few minutes can help.
If you’re really concerned or think you might have DVT, please seek medical attention immediately. I’m just here to offer helpful advice, but only a healthcare provider can give you an accurate diagnosis and proper treatment."
WHERE ID = 7;*/

/*UPDATE Ailments set article = "Lumbar Spinal Stenosis
It sounds like you might be experiencing symptoms similar to lumbar spinal stenosis, but remember I’m not a medical professional, so this isn’t a diagnosis. Lumbar spinal stenosis occurs when the spinal canal narrows and compresses the nerves, causing pain, numbness, tingling, or weakness in your lower back, buttocks, and legs. You might even feel a heavy sensation in your legs or experience cramping.
Let me tell you some things that might help.
Hot & Cold Packs. Applying heat can relax tight muscles, while cold packs can reduce inflammation and numb pain.
Balance & Strength Exercises. Gentle movements that improve balance and strengthen your back may relieve some discomfort.
If your symptoms are persistent or getting worse, it’s best to check in with a healthcare provider. I’m here to share tips that might help, but a professional can provide a personalized treatment plan to get you feeling better. Take care of that back!"
WHERE ID = 8;*/

/*UPDATE Ailments set article = "Cervical Spinal Stenosis
It sounds like you might be experiencing symptoms that could be related to cervical spinal stenosis. But remember, I’m not a medical professional, so I can’t say for sure. Cervical spinal stenosis occurs when the spinal canal narrows in the neck, compressing the nerves. This can lead to pain, numbness, tingling, or weakness in the neck, arms, and legs, and it may even affect your balance and hand coordination.
Let me tell you some ways to manage discomfort.
Hot & Cold Packs. Heat can relax muscles, while cold packs can help reduce inflammation and ease pain.
Balance & Strength Exercises. Gentle exercises to improve your balance and strengthen your neck and shoulders may be helpful.
If these symptoms sound familiar, consider reaching out to a healthcare provider for a proper evaluation. I’m here to offer general advice, but a medical professional can guide you with a personalized approach."
WHERE ID = 9;*/

/*UPDATE Ailments set article = "Hyperlordosis
It sounds like you might be experiencing symptoms of hyperlordosis, also known as hollow back or swayback. This is when there’s an excessive inward curve in the spine, which can lead to back pain and make your stomach look more pronounced. It can definitely cause discomfort and affect your posture.
Let me tell you some things that might help.
Core-Strengthening Exercises. Exercises like planks can strengthen your core and give your spine better support.
Ergonomic Adjustments. Improving your sitting posture with an ergonomic chair or lumbar support can make a difference.
Keep in mind, I’m not a medical professional, so if the discomfort continues or worsens, it’s a good idea to talk to a healthcare provider. They can give you tailored guidance and help you feel more comfortable. Stay strong, and keep working on that core!"
WHERE ID = 10;*/


/*SOURCES*/

/*UPDATE Ailments set Sources ="https://www.frontiersin.org/journals/sports-and-active-living/articles/10.3389/fspor.2024.1372979/full"
WHERE ID = 11;*/

/*UPDATE Ailments set Sources = "https://bmcmusculoskeletdisord.biomedcentral.com/articles/10.1186/1471-2474-11-79"
WHERE ID = 12;*/

/*UPDATE Ailments set Sources = "https://link.springer.com/article/10.1007/s40122-024-00600-x"
WHERE ID = 13;*/

/*UPDATE Ailments set Sources = "https://orthoinfo.aaos.org/en/diseases--conditions/neck-sprain"
WHERE ID = 14;*/

/*UPDATE Ailments set Sources = "https://pmc.ncbi.nlm.nih.gov/articles/PMC9434525/"
WHERE ID = 15;*/

/*UPDATE Ailments set Sources = "https://www.mdpi.com/2077-0383/12/12/4156"
WHERE ID = 16;*/

/*UPDATE Ailments set Sources = "https://www.health.com/tech-neck-7488554"
WHERE ID = 17;*/

/*UPDATE Ailments set Sources = "https://www.health.com/tech-neck-7488554"
WHERE ID = 18;*/

/*UPDATE Ailments set Sources = "https://www.webmd.com/pain-management/rotator-cuff-tendinopathy"
WHERE ID = 19;*/

/*UPDATE Ailments set Sources = "https://pmc.ncbi.nlm.nih.gov/articles/PMC8190485/"
WHERE ID = 20;*/

/*UPDATE Ailments set Sources = "https://www.ncbi.nlm.nih.gov/books/NBK538259/"
WHERE ID = 21;*/

/*UPDATE Ailments set Sources = "https://www.sciencedirect.com/science/article/abs/pii/B9780323901086000053?via%3Dihub"
WHERE ID = 22;*/

/*UPDATE Ailments set Sources = "https://www.performancehealth.com/articles/esports-injuries-how-to-get-pain-relief-from-gamers-thumb"
WHERE ID = 23;*/

/*UPDATE Ailments set Sources = "https://www.ncbi.nlm.nih.gov/books/NBK507908/"
WHERE ID = 5;*/

/*UPDATE Ailments set Sources = "https://www.physio-pedia.com/Lower_Crossed_Syndrome"
WHERE ID = 6;*/

/*UPDATE Ailments set Sources = "https://www.ncbi.nlm.nih.gov/books/NBK507708/"
WHERE ID = 7;*/

/*UPDATE Ailments set Sources = "https://my.clevelandclinic.org/health/diseases/17499-spinal-stenosis"
WHERE ID = 8;*/

/*UPDATE Ailments set Sources = "https://my.clevelandclinic.org/health/diseases/17499-spinal-stenosis"
WHERE ID = 9;*/

/*UPDATE Ailments set Sources = "https://www.webmd.com/back-pain/best-exercises-hyperlordosis"
WHERE ID = 10;*/