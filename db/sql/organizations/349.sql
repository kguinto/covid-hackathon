
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
      'Consultant Sleep & Pulmonary Medicine',
      '29275 W 10 Mile Rd
Farmington Hills, MI 48336',
      'Farmington Hills',
      'MI',
      'Mailing address : P Sinha ',
      'Yes',
      '42.4704153',
      '-83.3356451'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Consultant Sleep & Pulmonary Medicine'
        AND o.latitude = '42.4704153'
        AND o.longitude = '-83.3356451'));

COMMIT;
