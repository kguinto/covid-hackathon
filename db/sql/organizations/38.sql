
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
      'Hospitals via City of Berkeley',
      'N/A',
      'Berkeley',
      'CA',
      'rkesarwani@cityofberkeley.info',
      'Yes',
      'N/A',
      '69'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitals via City of Berkeley'
        AND o.latitude = 'N/A'
        AND o.longitude = '69'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitals via City of Berkeley'
        AND o.latitude = 'N/A'
        AND o.longitude = '69'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospitals via City of Berkeley'
        AND o.latitude = 'N/A'
        AND o.longitude = '69'));

COMMIT;
