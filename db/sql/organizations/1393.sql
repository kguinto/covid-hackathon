
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
      'White Oak of Waxhaw ',
      '700 Howie Mine Rd
Waxhaw, NC 28173',
      'Waxhaw ',
      'NC',
      'Once you get to the front door let them know you are there to give materials. ',
      'Yes',
      '34.9257925',
      '-80.7317283'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('99.99 % alcohol Face mask',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('surgical or NOT Lysol or Clorox wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Alcohol based Hand Sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Protective eye wear',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Oak of Waxhaw '
        AND o.latitude = '34.9257925'
        AND o.longitude = '-80.7317283'));

COMMIT;
