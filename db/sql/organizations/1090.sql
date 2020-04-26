
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
      'Westminster Place',
      '3200 Grant St
Evanston, IL 60201',
      'Evanaton',
      'IL',
      'Attn:  healthcare administrator',
      'No',
      '42.0575625',
      '-87.722592'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westminster Place'
        AND o.latitude = '42.0575625'
        AND o.longitude = '-87.722592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westminster Place'
        AND o.latitude = '42.0575625'
        AND o.longitude = '-87.722592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westminster Place'
        AND o.latitude = '42.0575625'
        AND o.longitude = '-87.722592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westminster Place'
        AND o.latitude = '42.0575625'
        AND o.longitude = '-87.722592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westminster Place'
        AND o.latitude = '42.0575625'
        AND o.longitude = '-87.722592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westminster Place'
        AND o.latitude = '42.0575625'
        AND o.longitude = '-87.722592'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westminster Place'
        AND o.latitude = '42.0575625'
        AND o.longitude = '-87.722592'));

COMMIT;
