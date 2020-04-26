
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
      'Amita Adventist Hinsdale Hospital',
      '120 N Oak St
Hinsdale, IL 60521',
      'Hinsdale',
      'IL',
      '120 N Oak St. Hinsdale , IL Attn Diagnostic Radiology Dept.',
      'Yes',
      '41.8056094',
      '-87.9206935'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita Adventist Hinsdale Hospital'
        AND o.latitude = '41.8056094'
        AND o.longitude = '-87.9206935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita Adventist Hinsdale Hospital'
        AND o.latitude = '41.8056094'
        AND o.longitude = '-87.9206935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita Adventist Hinsdale Hospital'
        AND o.latitude = '41.8056094'
        AND o.longitude = '-87.9206935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita Adventist Hinsdale Hospital'
        AND o.latitude = '41.8056094'
        AND o.longitude = '-87.9206935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita Adventist Hinsdale Hospital'
        AND o.latitude = '41.8056094'
        AND o.longitude = '-87.9206935'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Amita Adventist Hinsdale Hospital'
        AND o.latitude = '41.8056094'
        AND o.longitude = '-87.9206935'));

COMMIT;
