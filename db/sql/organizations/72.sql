
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
      'Cornerstone Home Health & Hospice',
      '1675 E Riverside Drive, Suite 100
Eagle, ID 83616',
      'Eagle',
      'ID',
      'You can mail it drop off anytime 9am-5pm M-F',
      'Yes',
      '43.6857468',
      '-116.3337913'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cornerstone Home Health & Hospice'
        AND o.latitude = '43.6857468'
        AND o.longitude = '-116.3337913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cornerstone Home Health & Hospice'
        AND o.latitude = '43.6857468'
        AND o.longitude = '-116.3337913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cornerstone Home Health & Hospice'
        AND o.latitude = '43.6857468'
        AND o.longitude = '-116.3337913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cornerstone Home Health & Hospice'
        AND o.latitude = '43.6857468'
        AND o.longitude = '-116.3337913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cornerstone Home Health & Hospice'
        AND o.latitude = '43.6857468'
        AND o.longitude = '-116.3337913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cornerstone Home Health & Hospice'
        AND o.latitude = '43.6857468'
        AND o.longitude = '-116.3337913'));

COMMIT;
