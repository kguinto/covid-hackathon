
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
      'Banner Physical Therapy',
      '9401 W Thunderbird Rd #190
Peoria, AZ 85381',
      'Peoria',
      'AZ',
      '',
      'Yes',
      '33.6092068',
      '-112.2612215'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Physical Therapy'
        AND o.latitude = '33.6092068'
        AND o.longitude = '-112.2612215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Physical Therapy'
        AND o.latitude = '33.6092068'
        AND o.longitude = '-112.2612215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Physical Therapy'
        AND o.latitude = '33.6092068'
        AND o.longitude = '-112.2612215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Physical Therapy'
        AND o.latitude = '33.6092068'
        AND o.longitude = '-112.2612215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Physical Therapy'
        AND o.latitude = '33.6092068'
        AND o.longitude = '-112.2612215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Physical Therapy'
        AND o.latitude = '33.6092068'
        AND o.longitude = '-112.2612215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Physical Therapy'
        AND o.latitude = '33.6092068'
        AND o.longitude = '-112.2612215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Physical Therapy'
        AND o.latitude = '33.6092068'
        AND o.longitude = '-112.2612215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Physical Therapy'
        AND o.latitude = '33.6092068'
        AND o.longitude = '-112.2612215'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Banner Physical Therapy'
        AND o.latitude = '33.6092068'
        AND o.longitude = '-112.2612215'));

COMMIT;
