
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
      'Chicago Women''s Health Group - Northwestern Memorial Hospital ',
      '211 East Chicago Avenue Suite 1200
Chicago, IL 60611',
      'Chicago',
      'IL',
      'Call 312-961-0399 and I will come down and get it- thank you',
      'Yes',
      '41.8964793',
      '-87.6226895'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Women''s Health Group - Northwestern Memorial Hospital '
        AND o.latitude = '41.8964793'
        AND o.longitude = '-87.6226895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Women''s Health Group - Northwestern Memorial Hospital '
        AND o.latitude = '41.8964793'
        AND o.longitude = '-87.6226895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Women''s Health Group - Northwestern Memorial Hospital '
        AND o.latitude = '41.8964793'
        AND o.longitude = '-87.6226895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Women''s Health Group - Northwestern Memorial Hospital '
        AND o.latitude = '41.8964793'
        AND o.longitude = '-87.6226895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Women''s Health Group - Northwestern Memorial Hospital '
        AND o.latitude = '41.8964793'
        AND o.longitude = '-87.6226895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Women''s Health Group - Northwestern Memorial Hospital '
        AND o.latitude = '41.8964793'
        AND o.longitude = '-87.6226895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Women''s Health Group - Northwestern Memorial Hospital '
        AND o.latitude = '41.8964793'
        AND o.longitude = '-87.6226895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Women''s Health Group - Northwestern Memorial Hospital '
        AND o.latitude = '41.8964793'
        AND o.longitude = '-87.6226895'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chicago Women''s Health Group - Northwestern Memorial Hospital '
        AND o.latitude = '41.8964793'
        AND o.longitude = '-87.6226895'));

COMMIT;
