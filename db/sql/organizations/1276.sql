
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
      'Franciscan Health Olympia Fields',
      '20201 Crawford Ave
Olympia Fields, IL 60461',
      'Olympia Fields ',
      'IL',
      'Donated items may be shipped or dropped off at the hospital''s receiving dock. Operating hours for the loading dock are between 7am-3pm. Any items dropped off after that time can be left with security.',
      'No',
      '41.5232407',
      '-87.710796'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Olympia Fields'
        AND o.latitude = '41.5232407'
        AND o.longitude = '-87.710796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Olympia Fields'
        AND o.latitude = '41.5232407'
        AND o.longitude = '-87.710796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Olympia Fields'
        AND o.latitude = '41.5232407'
        AND o.longitude = '-87.710796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Olympia Fields'
        AND o.latitude = '41.5232407'
        AND o.longitude = '-87.710796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Olympia Fields'
        AND o.latitude = '41.5232407'
        AND o.longitude = '-87.710796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Olympia Fields'
        AND o.latitude = '41.5232407'
        AND o.longitude = '-87.710796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Olympia Fields'
        AND o.latitude = '41.5232407'
        AND o.longitude = '-87.710796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Olympia Fields'
        AND o.latitude = '41.5232407'
        AND o.longitude = '-87.710796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Olympia Fields'
        AND o.latitude = '41.5232407'
        AND o.longitude = '-87.710796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Olympia Fields'
        AND o.latitude = '41.5232407'
        AND o.longitude = '-87.710796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('•Acoustic stethoscopes•	Specimen collection or transport container/bags',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Health Olympia Fields'
        AND o.latitude = '41.5232407'
        AND o.longitude = '-87.710796'));

COMMIT;
