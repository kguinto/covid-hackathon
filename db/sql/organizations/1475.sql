
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
      'Lifespring Home Health and Hospice',
      '2411 Springer Dr
Norman, OK 73069',
      'Norman',
      'OK',
      '',
      'Yes',
      '35.2054832',
      '-97.4778028'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespring Home Health and Hospice'
        AND o.latitude = '35.2054832'
        AND o.longitude = '-97.4778028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespring Home Health and Hospice'
        AND o.latitude = '35.2054832'
        AND o.longitude = '-97.4778028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespring Home Health and Hospice'
        AND o.latitude = '35.2054832'
        AND o.longitude = '-97.4778028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespring Home Health and Hospice'
        AND o.latitude = '35.2054832'
        AND o.longitude = '-97.4778028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespring Home Health and Hospice'
        AND o.latitude = '35.2054832'
        AND o.longitude = '-97.4778028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespring Home Health and Hospice'
        AND o.latitude = '35.2054832'
        AND o.longitude = '-97.4778028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespring Home Health and Hospice'
        AND o.latitude = '35.2054832'
        AND o.longitude = '-97.4778028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespring Home Health and Hospice'
        AND o.latitude = '35.2054832'
        AND o.longitude = '-97.4778028'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespring Home Health and Hospice'
        AND o.latitude = '35.2054832'
        AND o.longitude = '-97.4778028'));

COMMIT;
