
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
      'Pacific Anesthesia, Inc',
      '321 N. Kuakini Street, Suite 306
Honolulu, HI 96817',
      'Honolulu',
      'HI',
      'Please email Oren Bernstein, Pacific Anesthesia CMO, for any delivery at obernstein@pacificanesthesia.org. Thank you very much!!',
      'Yes',
      '21.3215492',
      '-157.8559229'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Anesthesia, Inc'
        AND o.latitude = '21.3215492'
        AND o.longitude = '-157.8559229'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Anesthesia, Inc'
        AND o.latitude = '21.3215492'
        AND o.longitude = '-157.8559229'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Anesthesia, Inc'
        AND o.latitude = '21.3215492'
        AND o.longitude = '-157.8559229'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Anesthesia, Inc'
        AND o.latitude = '21.3215492'
        AND o.longitude = '-157.8559229'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Anesthesia, Inc'
        AND o.latitude = '21.3215492'
        AND o.longitude = '-157.8559229'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Anesthesia, Inc'
        AND o.latitude = '21.3215492'
        AND o.longitude = '-157.8559229'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Anesthesia, Inc'
        AND o.latitude = '21.3215492'
        AND o.longitude = '-157.8559229'));

COMMIT;
