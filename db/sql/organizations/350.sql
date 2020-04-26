
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
      'At Home Therapy of Crystal Coast',
      '4915 Arendell St. Ste. J162
Morehead City, NC 28557',
      'Morehead City',
      'NC',
      'ATTN: Joshua Stoufflet',
      'No',
      '34.7328345',
      '-76.7898831'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'At Home Therapy of Crystal Coast'
        AND o.latitude = '34.7328345'
        AND o.longitude = '-76.7898831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'At Home Therapy of Crystal Coast'
        AND o.latitude = '34.7328345'
        AND o.longitude = '-76.7898831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'At Home Therapy of Crystal Coast'
        AND o.latitude = '34.7328345'
        AND o.longitude = '-76.7898831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'At Home Therapy of Crystal Coast'
        AND o.latitude = '34.7328345'
        AND o.longitude = '-76.7898831'));

COMMIT;
