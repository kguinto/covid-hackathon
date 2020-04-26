
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
      'Omni Home Care - Carnegie',
      '600 N Bell Ave Bldg 2 Suite 130
Carnegie, PA 15106',
      'Carnegie',
      'PA',
      'ATTN:  Lisa Demko. May leave at door of office or we can come curbside to pick up.',
      'Yes',
      '40.4164643',
      '-80.0893284'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni Home Care - Carnegie'
        AND o.latitude = '40.4164643'
        AND o.longitude = '-80.0893284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni Home Care - Carnegie'
        AND o.latitude = '40.4164643'
        AND o.longitude = '-80.0893284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni Home Care - Carnegie'
        AND o.latitude = '40.4164643'
        AND o.longitude = '-80.0893284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni Home Care - Carnegie'
        AND o.latitude = '40.4164643'
        AND o.longitude = '-80.0893284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni Home Care - Carnegie'
        AND o.latitude = '40.4164643'
        AND o.longitude = '-80.0893284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni Home Care - Carnegie'
        AND o.latitude = '40.4164643'
        AND o.longitude = '-80.0893284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni Home Care - Carnegie'
        AND o.latitude = '40.4164643'
        AND o.longitude = '-80.0893284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni Home Care - Carnegie'
        AND o.latitude = '40.4164643'
        AND o.longitude = '-80.0893284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni Home Care - Carnegie'
        AND o.latitude = '40.4164643'
        AND o.longitude = '-80.0893284'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Omni Home Care - Carnegie'
        AND o.latitude = '40.4164643'
        AND o.longitude = '-80.0893284'));

COMMIT;
