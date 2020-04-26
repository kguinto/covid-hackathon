
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
      'VA Palo Alto Veterans Healthcare',
      '3801 Miranda Ave
Palo Alto, CA 94304',
      'Palo alto',
      'CA',
      '',
      'Yes',
      '37.4054073',
      '-122.1400089'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'VA Palo Alto Veterans Healthcare'
        AND o.latitude = '37.4054073'
        AND o.longitude = '-122.1400089'));

COMMIT;
