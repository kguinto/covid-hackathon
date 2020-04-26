
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
      'NYU Langone Medical Center',
      '570 1st Avenue
New York, NY 10016',
      'New York',
      'NY',
      'Attn: Emergency Department, Camille Scribner MD',
      'Yes if items are unused',
      '40.7428097',
      '-73.9737947'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Medical Center'
        AND o.latitude = '40.7428097'
        AND o.longitude = '-73.9737947'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Medical Center'
        AND o.latitude = '40.7428097'
        AND o.longitude = '-73.9737947'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Medical Center'
        AND o.latitude = '40.7428097'
        AND o.longitude = '-73.9737947'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Medical Center'
        AND o.latitude = '40.7428097'
        AND o.longitude = '-73.9737947'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYU Langone Medical Center'
        AND o.latitude = '40.7428097'
        AND o.longitude = '-73.9737947'));

COMMIT;
