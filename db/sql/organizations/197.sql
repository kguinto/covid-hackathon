
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
      'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach',
      '2810 Long Beach Blvd
Long Beach, CA 90806',
      'Long Beach',
      'CA',
      'https://www.memorialcare.org/donations-needed

Monday through Friday, 10 a.m. to 2 p.m.

Staff will maintain safe physical distance from donors and will wear gloves and regularly clean their hands.

Donors will be asked to provide basic contact information and may request a receipt for their records

Donors who are not feeling well should wait until they feel better to donate.',
      '"New or Unused" items',
      '33.8079735',
      '-118.1882376'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable surgical caps',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PAPRS and PAPR hoods',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPRs',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Ventilators',
    (SELECT id FROM organizations o
      WHERE o.name = 'MemorialCare Long Beach Medical Center and Miller Children''s & Women''s Hospital Long Beach'
        AND o.latitude = '33.8079735'
        AND o.longitude = '-118.1882376'));

COMMIT;
