
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
      'Apex rehab care',
      '78 Birchwood Dr
Huntington Station, NY 11746',
      'Huntington',
      'NY',
      '78  birchwood',
      'Yes',
      '40.8267826',
      '-73.3944927'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex rehab care'
        AND o.latitude = '40.8267826'
        AND o.longitude = '-73.3944927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex rehab care'
        AND o.latitude = '40.8267826'
        AND o.longitude = '-73.3944927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex rehab care'
        AND o.latitude = '40.8267826'
        AND o.longitude = '-73.3944927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex rehab care'
        AND o.latitude = '40.8267826'
        AND o.longitude = '-73.3944927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex rehab care'
        AND o.latitude = '40.8267826'
        AND o.longitude = '-73.3944927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex rehab care'
        AND o.latitude = '40.8267826'
        AND o.longitude = '-73.3944927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex rehab care'
        AND o.latitude = '40.8267826'
        AND o.longitude = '-73.3944927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex rehab care'
        AND o.latitude = '40.8267826'
        AND o.longitude = '-73.3944927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex rehab care'
        AND o.latitude = '40.8267826'
        AND o.longitude = '-73.3944927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apex rehab care'
        AND o.latitude = '40.8267826'
        AND o.longitude = '-73.3944927'));

COMMIT;
