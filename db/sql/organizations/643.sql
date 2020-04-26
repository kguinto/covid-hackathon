
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
      'Larkin Community Hospital Palm Springs Campus',
      '1475 W 49th Pl
Hialeah, FL 33012',
      'Hialeah',
      'FL',
      'ATTN: INTERNAL MEDICINE RESIDENTS',
      'Yes',
      '25.8690179',
      '-80.3128235'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital Palm Springs Campus'
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital Palm Springs Campus'
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital Palm Springs Campus'
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital Palm Springs Campus'
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital Palm Springs Campus'
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital Palm Springs Campus'
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital Palm Springs Campus'
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital Palm Springs Campus'
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital Palm Springs Campus'
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Larkin Community Hospital Palm Springs Campus'
        AND o.latitude = '25.8690179'
        AND o.longitude = '-80.3128235'));

COMMIT;
