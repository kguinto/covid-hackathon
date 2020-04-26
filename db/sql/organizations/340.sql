
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
      'Yale New Haven Hospital Saint Raphael Campus',
      '1450 Chapel St
New Haven, CT 06511',
      ' New Haven',
      'CT',
      'Email DonationsPPE@ynhh.org with instructions as to how hospital staff may contact you',
      'Yes',
      '41.3101643',
      '-72.9428479'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital Saint Raphael Campus'
        AND o.latitude = '41.3101643'
        AND o.longitude = '-72.9428479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital Saint Raphael Campus'
        AND o.latitude = '41.3101643'
        AND o.longitude = '-72.9428479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital Saint Raphael Campus'
        AND o.latitude = '41.3101643'
        AND o.longitude = '-72.9428479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital Saint Raphael Campus'
        AND o.latitude = '41.3101643'
        AND o.longitude = '-72.9428479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital Saint Raphael Campus'
        AND o.latitude = '41.3101643'
        AND o.longitude = '-72.9428479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital Saint Raphael Campus'
        AND o.latitude = '41.3101643'
        AND o.longitude = '-72.9428479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital Saint Raphael Campus'
        AND o.latitude = '41.3101643'
        AND o.longitude = '-72.9428479'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Yale New Haven Hospital Saint Raphael Campus'
        AND o.latitude = '41.3101643'
        AND o.longitude = '-72.9428479'));

COMMIT;
