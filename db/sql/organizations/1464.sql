
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
      'OhioHealth Mansfield Hospital',
      '335 Glessner Ave
Mansfield, OH 44903',
      'Mansfield',
      'OH',
      'Please come to the main entrance and contact Kyle Martin at 419-571-4763',
      'No',
      '40.7525748',
      '-82.5280879'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Mansfield Hospital'
        AND o.latitude = '40.7525748'
        AND o.longitude = '-82.5280879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Mansfield Hospital'
        AND o.latitude = '40.7525748'
        AND o.longitude = '-82.5280879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Mansfield Hospital'
        AND o.latitude = '40.7525748'
        AND o.longitude = '-82.5280879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Mansfield Hospital'
        AND o.latitude = '40.7525748'
        AND o.longitude = '-82.5280879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Mansfield Hospital'
        AND o.latitude = '40.7525748'
        AND o.longitude = '-82.5280879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Mansfield Hospital'
        AND o.latitude = '40.7525748'
        AND o.longitude = '-82.5280879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Mansfield Hospital'
        AND o.latitude = '40.7525748'
        AND o.longitude = '-82.5280879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Mansfield Hospital'
        AND o.latitude = '40.7525748'
        AND o.longitude = '-82.5280879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Mansfield Hospital'
        AND o.latitude = '40.7525748'
        AND o.longitude = '-82.5280879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Mansfield Hospital'
        AND o.latitude = '40.7525748'
        AND o.longitude = '-82.5280879'));

COMMIT;
