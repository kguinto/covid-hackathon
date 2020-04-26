
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
      'Emanate Health - Queen of the Valley Hospital',
      '1115 S Sunset Ave
West Covina, CA 91790',
      'West Covina',
      'CA',
      'Attn: ER Department',
      'Yes',
      '34.0642264',
      '-117.9453122'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Queen of the Valley Hospital'
        AND o.latitude = '34.0642264'
        AND o.longitude = '-117.9453122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Queen of the Valley Hospital'
        AND o.latitude = '34.0642264'
        AND o.longitude = '-117.9453122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Queen of the Valley Hospital'
        AND o.latitude = '34.0642264'
        AND o.longitude = '-117.9453122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Queen of the Valley Hospital'
        AND o.latitude = '34.0642264'
        AND o.longitude = '-117.9453122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Queen of the Valley Hospital'
        AND o.latitude = '34.0642264'
        AND o.longitude = '-117.9453122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Queen of the Valley Hospital'
        AND o.latitude = '34.0642264'
        AND o.longitude = '-117.9453122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Queen of the Valley Hospital'
        AND o.latitude = '34.0642264'
        AND o.longitude = '-117.9453122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Queen of the Valley Hospital'
        AND o.latitude = '34.0642264'
        AND o.longitude = '-117.9453122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Queen of the Valley Hospital'
        AND o.latitude = '34.0642264'
        AND o.longitude = '-117.9453122'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Queen of the Valley Hospital'
        AND o.latitude = '34.0642264'
        AND o.longitude = '-117.9453122'));

COMMIT;
