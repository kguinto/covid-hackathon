
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
      'St. Peters Hospital',
      '315 S Manning Boulevard
Albany, NY 12208',
      'Albany',
      'NY',
      '',
      'Yes',
      '42.656158',
      '-73.8034993'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Peters Hospital'
        AND o.latitude = '42.656158'
        AND o.longitude = '-73.8034993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Peters Hospital'
        AND o.latitude = '42.656158'
        AND o.longitude = '-73.8034993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Peters Hospital'
        AND o.latitude = '42.656158'
        AND o.longitude = '-73.8034993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Peters Hospital'
        AND o.latitude = '42.656158'
        AND o.longitude = '-73.8034993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Peters Hospital'
        AND o.latitude = '42.656158'
        AND o.longitude = '-73.8034993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Peters Hospital'
        AND o.latitude = '42.656158'
        AND o.longitude = '-73.8034993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Peters Hospital'
        AND o.latitude = '42.656158'
        AND o.longitude = '-73.8034993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Peters Hospital'
        AND o.latitude = '42.656158'
        AND o.longitude = '-73.8034993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Peters Hospital'
        AND o.latitude = '42.656158'
        AND o.longitude = '-73.8034993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Peters Hospital'
        AND o.latitude = '42.656158'
        AND o.longitude = '-73.8034993'));

COMMIT;
