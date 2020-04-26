
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
      'Austin Oaks Hospital',
      '1407 W Stassney Ln
Austin, TX 78745',
      'Austin',
      'TX',
      'Call 512-745-1492 the supervisor will pick it up curbside ',
      'Yes',
      '30.2113495',
      '-97.7926913'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Austin Oaks Hospital'
        AND o.latitude = '30.2113495'
        AND o.longitude = '-97.7926913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Austin Oaks Hospital'
        AND o.latitude = '30.2113495'
        AND o.longitude = '-97.7926913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Austin Oaks Hospital'
        AND o.latitude = '30.2113495'
        AND o.longitude = '-97.7926913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Austin Oaks Hospital'
        AND o.latitude = '30.2113495'
        AND o.longitude = '-97.7926913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Austin Oaks Hospital'
        AND o.latitude = '30.2113495'
        AND o.longitude = '-97.7926913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Austin Oaks Hospital'
        AND o.latitude = '30.2113495'
        AND o.longitude = '-97.7926913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Austin Oaks Hospital'
        AND o.latitude = '30.2113495'
        AND o.longitude = '-97.7926913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Austin Oaks Hospital'
        AND o.latitude = '30.2113495'
        AND o.longitude = '-97.7926913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Austin Oaks Hospital'
        AND o.latitude = '30.2113495'
        AND o.longitude = '-97.7926913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Austin Oaks Hospital'
        AND o.latitude = '30.2113495'
        AND o.longitude = '-97.7926913'));

COMMIT;
