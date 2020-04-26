
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
      'Zuckerberg San Francisco General',
      '350 Rhode Island St #100
San Francisco, CA 94103',
      'San Francisco',
      'CA',
      'SEIU Local 1021
Call 415 848 3611 and get instructions if no answer call Albert Mejia 415 686 5075',
      'Yes',
      '37.7656301',
      '-122.4029238'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Zuckerberg San Francisco General'
        AND o.latitude = '37.7656301'
        AND o.longitude = '-122.4029238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Zuckerberg San Francisco General'
        AND o.latitude = '37.7656301'
        AND o.longitude = '-122.4029238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Zuckerberg San Francisco General'
        AND o.latitude = '37.7656301'
        AND o.longitude = '-122.4029238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Zuckerberg San Francisco General'
        AND o.latitude = '37.7656301'
        AND o.longitude = '-122.4029238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Zuckerberg San Francisco General'
        AND o.latitude = '37.7656301'
        AND o.longitude = '-122.4029238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Zuckerberg San Francisco General'
        AND o.latitude = '37.7656301'
        AND o.longitude = '-122.4029238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Zuckerberg San Francisco General'
        AND o.latitude = '37.7656301'
        AND o.longitude = '-122.4029238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Zuckerberg San Francisco General'
        AND o.latitude = '37.7656301'
        AND o.longitude = '-122.4029238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Zuckerberg San Francisco General'
        AND o.latitude = '37.7656301'
        AND o.longitude = '-122.4029238'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Zuckerberg San Francisco General'
        AND o.latitude = '37.7656301'
        AND o.longitude = '-122.4029238'));

COMMIT;
