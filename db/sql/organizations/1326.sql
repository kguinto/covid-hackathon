
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
      'Sharp HealthCare',
      '4000 Ruffin Rd Suite A
San Diego, CA 92123',
      'San Diego',
      'CA',
      'ATTN: Christina Yates',
      'Yes',
      '32.8143395',
      '-117.1246369'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp HealthCare'
        AND o.latitude = '32.8143395'
        AND o.longitude = '-117.1246369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp HealthCare'
        AND o.latitude = '32.8143395'
        AND o.longitude = '-117.1246369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp HealthCare'
        AND o.latitude = '32.8143395'
        AND o.longitude = '-117.1246369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp HealthCare'
        AND o.latitude = '32.8143395'
        AND o.longitude = '-117.1246369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp HealthCare'
        AND o.latitude = '32.8143395'
        AND o.longitude = '-117.1246369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp HealthCare'
        AND o.latitude = '32.8143395'
        AND o.longitude = '-117.1246369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp HealthCare'
        AND o.latitude = '32.8143395'
        AND o.longitude = '-117.1246369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp HealthCare'
        AND o.latitude = '32.8143395'
        AND o.longitude = '-117.1246369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp HealthCare'
        AND o.latitude = '32.8143395'
        AND o.longitude = '-117.1246369'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp HealthCare'
        AND o.latitude = '32.8143395'
        AND o.longitude = '-117.1246369'));

COMMIT;
