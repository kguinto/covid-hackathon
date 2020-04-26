
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
      'LG Pediatrics',
      '15000 Los Gatos Blvd, #4
Los Gatos, CA 95032',
      'Los Gatos',
      'CA',
      'Please knock on door between 9am to 5pm',
      'No',
      '37.2502088',
      '-121.9542581'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'LG Pediatrics'
        AND o.latitude = '37.2502088'
        AND o.longitude = '-121.9542581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'LG Pediatrics'
        AND o.latitude = '37.2502088'
        AND o.longitude = '-121.9542581'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'LG Pediatrics'
        AND o.latitude = '37.2502088'
        AND o.longitude = '-121.9542581'));

COMMIT;
