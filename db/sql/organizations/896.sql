
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
      'CareOne at Holmdel ',
      '188 NJ-34
Holmdel, NJ 07733',
      'Holmdel ',
      'NJ',
      'ATTN Diana in rehab',
      'Yes',
      '40.3542196',
      '-74.1961498'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareOne at Holmdel '
        AND o.latitude = '40.3542196'
        AND o.longitude = '-74.1961498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareOne at Holmdel '
        AND o.latitude = '40.3542196'
        AND o.longitude = '-74.1961498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareOne at Holmdel '
        AND o.latitude = '40.3542196'
        AND o.longitude = '-74.1961498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareOne at Holmdel '
        AND o.latitude = '40.3542196'
        AND o.longitude = '-74.1961498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareOne at Holmdel '
        AND o.latitude = '40.3542196'
        AND o.longitude = '-74.1961498'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'CareOne at Holmdel '
        AND o.latitude = '40.3542196'
        AND o.longitude = '-74.1961498'));

COMMIT;
