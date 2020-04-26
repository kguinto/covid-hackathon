
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
      ' North Willow Grove Pediatrics ',
      '2510 Maryland Rd #160
Willow Grove, PA 19090',
      'Willow Grove',
      'PA',
      '',
      'No',
      '40.1632542',
      '-75.1300015'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = ' North Willow Grove Pediatrics '
        AND o.latitude = '40.1632542'
        AND o.longitude = '-75.1300015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = ' North Willow Grove Pediatrics '
        AND o.latitude = '40.1632542'
        AND o.longitude = '-75.1300015'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = ' North Willow Grove Pediatrics '
        AND o.latitude = '40.1632542'
        AND o.longitude = '-75.1300015'));

COMMIT;
