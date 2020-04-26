
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
      'Pediatric Associates of Savannah',
      '4600 Waters Ave
Savannah, GA 31404',
      'Savannah',
      'GA',
      'Will take any way we can ',
      'Yes',
      '32.03242',
      '-81.091076'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Associates of Savannah'
        AND o.latitude = '32.03242'
        AND o.longitude = '-81.091076'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Associates of Savannah'
        AND o.latitude = '32.03242'
        AND o.longitude = '-81.091076'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Associates of Savannah'
        AND o.latitude = '32.03242'
        AND o.longitude = '-81.091076'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Associates of Savannah'
        AND o.latitude = '32.03242'
        AND o.longitude = '-81.091076'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Associates of Savannah'
        AND o.latitude = '32.03242'
        AND o.longitude = '-81.091076'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Associates of Savannah'
        AND o.latitude = '32.03242'
        AND o.longitude = '-81.091076'));

COMMIT;
