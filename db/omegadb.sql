

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
