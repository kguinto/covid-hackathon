
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Pediatric and Medicine Inc',
      '4153 Flat Shoals Pkwy #300B
Decatur, GA 30034',
      'Decatur ',
      'GA',
      '4153 Flat Shoals Pkwy Ste 300B, Decatur, Ga 30034',
      'Yes',
      '33.6881808',
      '-84.2553445'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric and Medicine Inc'
        AND o.latitude = '33.6881808'
        AND o.longitude = '-84.2553445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric and Medicine Inc'
        AND o.latitude = '33.6881808'
        AND o.longitude = '-84.2553445'));

COMMIT;
