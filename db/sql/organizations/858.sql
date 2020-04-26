
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
      'Apria Healthcare',
      '7929 Ruffner Ave
Van Nuys, CA 91406',
      'Van Nuys',
      'CA',
      'ATTN: Sean Nahm',
      'Yes',
      '34.2146151',
      '-118.4971086'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Apria Healthcare'
        AND o.latitude = '34.2146151'
        AND o.longitude = '-118.4971086'));

COMMIT;
