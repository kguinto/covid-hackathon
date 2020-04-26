
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
      'Westwood Healthcare and Rehabilitation',
      '101 Stockyard Rd
Statesboro, GA 30458',
      'Statesboro',
      'GA',
      '101 Stockyard Rd',
      'Yes',
      '32.4575459',
      '-81.7999745'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westwood Healthcare and Rehabilitation'
        AND o.latitude = '32.4575459'
        AND o.longitude = '-81.7999745'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westwood Healthcare and Rehabilitation'
        AND o.latitude = '32.4575459'
        AND o.longitude = '-81.7999745'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westwood Healthcare and Rehabilitation'
        AND o.latitude = '32.4575459'
        AND o.longitude = '-81.7999745'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westwood Healthcare and Rehabilitation'
        AND o.latitude = '32.4575459'
        AND o.longitude = '-81.7999745'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westwood Healthcare and Rehabilitation'
        AND o.latitude = '32.4575459'
        AND o.longitude = '-81.7999745'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westwood Healthcare and Rehabilitation'
        AND o.latitude = '32.4575459'
        AND o.longitude = '-81.7999745'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westwood Healthcare and Rehabilitation'
        AND o.latitude = '32.4575459'
        AND o.longitude = '-81.7999745'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westwood Healthcare and Rehabilitation'
        AND o.latitude = '32.4575459'
        AND o.longitude = '-81.7999745'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westwood Healthcare and Rehabilitation'
        AND o.latitude = '32.4575459'
        AND o.longitude = '-81.7999745'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westwood Healthcare and Rehabilitation'
        AND o.latitude = '32.4575459'
        AND o.longitude = '-81.7999745'));

COMMIT;
