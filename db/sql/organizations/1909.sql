
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
      'geisinger HolySpirit',
      '875 Poplar Church Rd #4th
Camp Hill, PA 17011',
      'Camp Hill',
      'PA',
      'Attn: Steve or Aissa',
      'Yes',
      '40.2558917',
      '-76.9233874'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'geisinger HolySpirit'
        AND o.latitude = '40.2558917'
        AND o.longitude = '-76.9233874'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'geisinger HolySpirit'
        AND o.latitude = '40.2558917'
        AND o.longitude = '-76.9233874'));

COMMIT;
