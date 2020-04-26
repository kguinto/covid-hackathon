
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
      'Community Options - Dallas',
      '8604 Greenville Ave #100
Dallas, TX 75243',
      'Dallas',
      'TX',
      'Curbside drop off ',
      'Yes',
      '32.8943419',
      '-96.7527567'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options - Dallas'
        AND o.latitude = '32.8943419'
        AND o.longitude = '-96.7527567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options - Dallas'
        AND o.latitude = '32.8943419'
        AND o.longitude = '-96.7527567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options - Dallas'
        AND o.latitude = '32.8943419'
        AND o.longitude = '-96.7527567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options - Dallas'
        AND o.latitude = '32.8943419'
        AND o.longitude = '-96.7527567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options - Dallas'
        AND o.latitude = '32.8943419'
        AND o.longitude = '-96.7527567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options - Dallas'
        AND o.latitude = '32.8943419'
        AND o.longitude = '-96.7527567'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options - Dallas'
        AND o.latitude = '32.8943419'
        AND o.longitude = '-96.7527567'));

COMMIT;
