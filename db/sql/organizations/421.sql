
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
      'Rush University Medical Center',
      '1653 W Congress Pkwy
Chicago, IL 60612',
      'Chicago',
      'IL',
      'Shipping or dropoff to 711 S Paulina St, Chicago, IL 60612',
      'unsure',
      '41.8747095',
      '-87.668452'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush University Medical Center'
        AND o.latitude = '41.8747095'
        AND o.longitude = '-87.668452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush University Medical Center'
        AND o.latitude = '41.8747095'
        AND o.longitude = '-87.668452'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rush University Medical Center'
        AND o.latitude = '41.8747095'
        AND o.longitude = '-87.668452'));

COMMIT;
