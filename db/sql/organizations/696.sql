
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
      'Blount Memorial Hospital',
      '907 E Lamar Alexander Pkwy
Maryville, TN 37804',
      'Maryville',
      'TN',
      'attn. JAKE GRAVES',
      'Yes',
      '35.7559386',
      '-83.9580382'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blount Memorial Hospital'
        AND o.latitude = '35.7559386'
        AND o.longitude = '-83.9580382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blount Memorial Hospital'
        AND o.latitude = '35.7559386'
        AND o.longitude = '-83.9580382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blount Memorial Hospital'
        AND o.latitude = '35.7559386'
        AND o.longitude = '-83.9580382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blount Memorial Hospital'
        AND o.latitude = '35.7559386'
        AND o.longitude = '-83.9580382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blount Memorial Hospital'
        AND o.latitude = '35.7559386'
        AND o.longitude = '-83.9580382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blount Memorial Hospital'
        AND o.latitude = '35.7559386'
        AND o.longitude = '-83.9580382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blount Memorial Hospital'
        AND o.latitude = '35.7559386'
        AND o.longitude = '-83.9580382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blount Memorial Hospital'
        AND o.latitude = '35.7559386'
        AND o.longitude = '-83.9580382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blount Memorial Hospital'
        AND o.latitude = '35.7559386'
        AND o.longitude = '-83.9580382'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Blount Memorial Hospital'
        AND o.latitude = '35.7559386'
        AND o.longitude = '-83.9580382'));

COMMIT;
