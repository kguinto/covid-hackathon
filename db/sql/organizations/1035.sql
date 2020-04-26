
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
      'Preceptor Home Health and Hospice',
      'W175 N11117 Stonewood Drive, Suite 100
Germantown, WI 53022',
      'Germantown',
      'WI',
      'Attn: Clinical Director',
      'Yes',
      '43.2195706',
      '-88.1275177'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preceptor Home Health and Hospice'
        AND o.latitude = '43.2195706'
        AND o.longitude = '-88.1275177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preceptor Home Health and Hospice'
        AND o.latitude = '43.2195706'
        AND o.longitude = '-88.1275177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preceptor Home Health and Hospice'
        AND o.latitude = '43.2195706'
        AND o.longitude = '-88.1275177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preceptor Home Health and Hospice'
        AND o.latitude = '43.2195706'
        AND o.longitude = '-88.1275177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preceptor Home Health and Hospice'
        AND o.latitude = '43.2195706'
        AND o.longitude = '-88.1275177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preceptor Home Health and Hospice'
        AND o.latitude = '43.2195706'
        AND o.longitude = '-88.1275177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preceptor Home Health and Hospice'
        AND o.latitude = '43.2195706'
        AND o.longitude = '-88.1275177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preceptor Home Health and Hospice'
        AND o.latitude = '43.2195706'
        AND o.longitude = '-88.1275177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preceptor Home Health and Hospice'
        AND o.latitude = '43.2195706'
        AND o.longitude = '-88.1275177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preceptor Home Health and Hospice'
        AND o.latitude = '43.2195706'
        AND o.longitude = '-88.1275177'));

COMMIT;
