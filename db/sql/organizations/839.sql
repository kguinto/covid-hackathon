
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
      'Asante Health System',
      '280 Maple St
Ashland, OR 97520',
      'Ashland',
      'OR',
      'Loading Dock',
      'Yes',
      '42.206032',
      '-122.7250341'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System'
        AND o.latitude = '42.206032'
        AND o.longitude = '-122.7250341'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System'
        AND o.latitude = '42.206032'
        AND o.longitude = '-122.7250341'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System'
        AND o.latitude = '42.206032'
        AND o.longitude = '-122.7250341'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System'
        AND o.latitude = '42.206032'
        AND o.longitude = '-122.7250341'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System'
        AND o.latitude = '42.206032'
        AND o.longitude = '-122.7250341'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System'
        AND o.latitude = '42.206032'
        AND o.longitude = '-122.7250341'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System'
        AND o.latitude = '42.206032'
        AND o.longitude = '-122.7250341'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System'
        AND o.latitude = '42.206032'
        AND o.longitude = '-122.7250341'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System'
        AND o.latitude = '42.206032'
        AND o.longitude = '-122.7250341'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Asante Health System'
        AND o.latitude = '42.206032'
        AND o.longitude = '-122.7250341'));

COMMIT;
