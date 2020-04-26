
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
      'Mission Skilled Nursing and Subacute Center',
      '410 N Winchester Blvd
Santa Clara, CA 95050',
      'Santa Clara',
      'CA',
      'curbside',
      'Yes',
      '37.3344677',
      '-121.9511328'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Skilled Nursing and Subacute Center'
        AND o.latitude = '37.3344677'
        AND o.longitude = '-121.9511328'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Skilled Nursing and Subacute Center'
        AND o.latitude = '37.3344677'
        AND o.longitude = '-121.9511328'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Skilled Nursing and Subacute Center'
        AND o.latitude = '37.3344677'
        AND o.longitude = '-121.9511328'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Skilled Nursing and Subacute Center'
        AND o.latitude = '37.3344677'
        AND o.longitude = '-121.9511328'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Skilled Nursing and Subacute Center'
        AND o.latitude = '37.3344677'
        AND o.longitude = '-121.9511328'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Skilled Nursing and Subacute Center'
        AND o.latitude = '37.3344677'
        AND o.longitude = '-121.9511328'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Skilled Nursing and Subacute Center'
        AND o.latitude = '37.3344677'
        AND o.longitude = '-121.9511328'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Skilled Nursing and Subacute Center'
        AND o.latitude = '37.3344677'
        AND o.longitude = '-121.9511328'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Skilled Nursing and Subacute Center'
        AND o.latitude = '37.3344677'
        AND o.longitude = '-121.9511328'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Skilled Nursing and Subacute Center'
        AND o.latitude = '37.3344677'
        AND o.longitude = '-121.9511328'));

COMMIT;
