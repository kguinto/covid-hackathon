
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
      'Riverwood Health and Rehbilitation',
      '808 Colley Rd
Starke, FL 32091',
      'Starke',
      'FL',
      'Call ahead and Drop off at the door, ring doorbell. Or mail to 808 colley road, with attention to central supplies',
      'Yes',
      '29.9363019',
      '-82.1016026'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverwood Health and Rehbilitation'
        AND o.latitude = '29.9363019'
        AND o.longitude = '-82.1016026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverwood Health and Rehbilitation'
        AND o.latitude = '29.9363019'
        AND o.longitude = '-82.1016026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverwood Health and Rehbilitation'
        AND o.latitude = '29.9363019'
        AND o.longitude = '-82.1016026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverwood Health and Rehbilitation'
        AND o.latitude = '29.9363019'
        AND o.longitude = '-82.1016026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverwood Health and Rehbilitation'
        AND o.latitude = '29.9363019'
        AND o.longitude = '-82.1016026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverwood Health and Rehbilitation'
        AND o.latitude = '29.9363019'
        AND o.longitude = '-82.1016026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverwood Health and Rehbilitation'
        AND o.latitude = '29.9363019'
        AND o.longitude = '-82.1016026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverwood Health and Rehbilitation'
        AND o.latitude = '29.9363019'
        AND o.longitude = '-82.1016026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverwood Health and Rehbilitation'
        AND o.latitude = '29.9363019'
        AND o.longitude = '-82.1016026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverwood Health and Rehbilitation'
        AND o.latitude = '29.9363019'
        AND o.longitude = '-82.1016026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('02 monitors',
    (SELECT id FROM organizations o
      WHERE o.name = 'Riverwood Health and Rehbilitation'
        AND o.latitude = '29.9363019'
        AND o.longitude = '-82.1016026'));

COMMIT;
