
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
      'DuPage Medical Group',
      '430 Pennsylvania Ave
Glen Ellyn, IL 60137',
      'Glen Ellyn',
      'IL',
      'To receiving dock around the building, Jose Sanchez',
      'Yes',
      '41.8771945',
      '-88.0711199'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'DuPage Medical Group'
        AND o.latitude = '41.8771945'
        AND o.longitude = '-88.0711199'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'DuPage Medical Group'
        AND o.latitude = '41.8771945'
        AND o.longitude = '-88.0711199'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'DuPage Medical Group'
        AND o.latitude = '41.8771945'
        AND o.longitude = '-88.0711199'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'DuPage Medical Group'
        AND o.latitude = '41.8771945'
        AND o.longitude = '-88.0711199'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'DuPage Medical Group'
        AND o.latitude = '41.8771945'
        AND o.longitude = '-88.0711199'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'DuPage Medical Group'
        AND o.latitude = '41.8771945'
        AND o.longitude = '-88.0711199'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'DuPage Medical Group'
        AND o.latitude = '41.8771945'
        AND o.longitude = '-88.0711199'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'DuPage Medical Group'
        AND o.latitude = '41.8771945'
        AND o.longitude = '-88.0711199'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'DuPage Medical Group'
        AND o.latitude = '41.8771945'
        AND o.longitude = '-88.0711199'));

COMMIT;
