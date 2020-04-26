
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
      'Northeastern Vermont Regional Hospital',
      '38 Lancaster Rd
Whitefield, NH 03598',
      'Whitefield',
      'NH',
      'Leave at Whitefield Animal Hospital with receptionist. She will deliver to her relative who is a RN at Northeastern Vermont Regional Hospital',
      'Yes',
      '44.3755075',
      '-71.6096784'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northeastern Vermont Regional Hospital'
        AND o.latitude = '44.3755075'
        AND o.longitude = '-71.6096784'));

COMMIT;
