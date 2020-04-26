
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
      'ManorCare Health Service- Kingston',
      '200 2nd Ave
Kingston, PA 18704',
      'Kingston',
      'PA',
      'supplies can be dropped off in foyer of facility.',
      'Yes',
      '41.255735',
      '-75.8843223'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Health Service- Kingston'
        AND o.latitude = '41.255735'
        AND o.longitude = '-75.8843223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Health Service- Kingston'
        AND o.latitude = '41.255735'
        AND o.longitude = '-75.8843223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Health Service- Kingston'
        AND o.latitude = '41.255735'
        AND o.longitude = '-75.8843223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Health Service- Kingston'
        AND o.latitude = '41.255735'
        AND o.longitude = '-75.8843223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Health Service- Kingston'
        AND o.latitude = '41.255735'
        AND o.longitude = '-75.8843223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Health Service- Kingston'
        AND o.latitude = '41.255735'
        AND o.longitude = '-75.8843223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Health Service- Kingston'
        AND o.latitude = '41.255735'
        AND o.longitude = '-75.8843223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Health Service- Kingston'
        AND o.latitude = '41.255735'
        AND o.longitude = '-75.8843223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Health Service- Kingston'
        AND o.latitude = '41.255735'
        AND o.longitude = '-75.8843223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'ManorCare Health Service- Kingston'
        AND o.latitude = '41.255735'
        AND o.longitude = '-75.8843223'));

COMMIT;
