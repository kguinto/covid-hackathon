
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
      'Coney Island Hospital',
      '2601 Ocean Pkwy
Brooklyn, NY 11235',
      'New York - Brooklyn ',
      'NY',
      'Personal hand off

|

Anesthesia Department
Attention Dr. Gregory Girshin

|

Mail ATTN: Dr. Alyssa Cocchiara, Emergency Department Suite 1N28 ',
      'Yes',
      '40.5856257',
      '-73.9648706'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coney Island Hospital'
        AND o.latitude = '40.5856257'
        AND o.longitude = '-73.9648706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coney Island Hospital'
        AND o.latitude = '40.5856257'
        AND o.longitude = '-73.9648706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coney Island Hospital'
        AND o.latitude = '40.5856257'
        AND o.longitude = '-73.9648706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coney Island Hospital'
        AND o.latitude = '40.5856257'
        AND o.longitude = '-73.9648706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coney Island Hospital'
        AND o.latitude = '40.5856257'
        AND o.longitude = '-73.9648706'));

COMMIT;
