
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
      'MD Anderson Cancer Center',
      '3003 Reba Dr
Houston, TX 77019',
      'Houston',
      'TX',
      'Drop off or mail, grateful for anything',
      'Yes',
      '29.7444164',
      '-95.4190943'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'MD Anderson Cancer Center'
        AND o.latitude = '29.7444164'
        AND o.longitude = '-95.4190943'));

COMMIT;
